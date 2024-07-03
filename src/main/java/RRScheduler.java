import java.util.Properties;
import java.util.LinkedList;
import java.util.Queue;

/**
 * Round Robin
 * cand_num = 249763
 */
public class RRScheduler extends AbstractScheduler {
  private Queue<Process> readyQueue;
  private int timeQuantum;

  /**
   * Creates an instance of the RR scheduler
   * @param parameters given
   */
  @Override
  public void initialize(Properties parameters) {
    readyQueue = new LinkedList<>();
    timeQuantum = Integer.parseInt(parameters.getProperty("timeQuantum"));

  }

  //going to try make a circular linked list as RR allows each process to have equal opportunity
  // to be executed (no priority) therefore the queue goes in a circular manner.

  /**
   * Adds a process to the ready queue.
   * usedFullTimeQuantum is true if process is being moved to ready
   * after having fully used its time quantum.
   */
  @Override
  public void ready(Process process, boolean usedFullTimeQuantum) {
    if (!usedFullTimeQuantum) {
      readyQueue.add(process);
    }
  }

  /**
   * Removes the next process to be run from the ready queue 
   * and returns it. 
   * Returns null if there is no process to run.
   */
  public Process schedule() {

    if (!readyQueue.isEmpty()) {
      return readyQueue.poll();
    } else {
      return null;
    }
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
    return false;
  }
}
