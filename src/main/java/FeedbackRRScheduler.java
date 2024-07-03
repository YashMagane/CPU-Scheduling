import java.util.Properties;
import java.util.*;
import java.util.LinkedList;

/**
 * Feedback Round Robin
 * cand_num = 249763
 */
public class FeedbackRRScheduler extends AbstractScheduler {

  private Queue<Process> readyQueue;
  private int timeQuantum;
  public static int highPriority = 0;
  public static int lowPriority = 500;

  /**
   * Creates an instance of the Feedback RR scheduler
   * @param parameters given
   */
  @Override
  public void initialize(Properties parameters) {
    readyQueue = new LinkedList<>();
    timeQuantum = Integer.parseInt(parameters.getProperty("timeQuantum"));
  }
  /**
   * Adds a process to the ready queue.
   * usedFullTimeQuantum is true if process is being moved to ready
   * after having fully used its time quantum.
   */
  public void ready(Process process, boolean usedFullTimeQuantum) {
    if (usedFullTimeQuantum == true) {
      process.setPriority(process.getPriority() + 1);
      readyQueue.add(process);
    } else {
      readyQueue.offer(process);
    }
  }
  /**
   * Removes the next process to be run from the ready queue 
   * and returns it. 
   * Returns null if there is no process to run.
   */
  public Process schedule() {
    for (int priorityLvl = highPriority; priorityLvl <= lowPriority; priorityLvl++) {
      Iterator<Process> iterator = readyQueue.iterator();
      while (iterator.hasNext()) {
        Process process = iterator.next();
        if (process.getPriority() == priorityLvl) {
          iterator.remove();
          if (process != null ) {
            readyQueue.remove(process);
            return process;
          } else {
            return null;
          }
        }
      }
    }
    return null;
  }

  /**
   * Returns the time quantum of this scheduler
   * or -1 if the scheduler does not require a timer interrupt.
   */
  public int getTimeQuantum() {
    return timeQuantum;
  }

  /**
   * Returns true the scheduler is preemptive
   */
  public boolean isPreemptive() {
    return true;
  }
}
