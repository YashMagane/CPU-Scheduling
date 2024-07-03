import java.util.Properties;
import java.util.LinkedList;
import java.util.Queue;

/**
 * Shortest Job First
 * cand_num = 249763
 */
public class IdealSJFScheduler extends AbstractScheduler {
  private Queue<Process> readyQueue;

  /**
   * Creates an instance of the IdealSJF scheduler
   * @param parameters given
   */
  @Override
  public void initialize(Properties parameters) {
    readyQueue = new LinkedList<>();
  }

  /**
   * Adds a process to the ready queue.
   * usedFullTimeQuantum is true if process is being moved to ready
   * after having fully used its time quantum.
   */
  public void ready(Process process, boolean usedFullTimeQuantum) {

    readyQueue.offer(process);
  }

  /**
   * Removes the next process to be run from the ready queue 
   * and returns it. 
   * Returns null if there is no process to run.
   */
  public Process schedule() {

    if (readyQueue == null || readyQueue.isEmpty()) {
      return null;
    } else {
      Process currentProcess = readyQueue.peek(); //get first process in queue
      int shortestNextBurstTime = currentProcess.getNextBurst(); //get burst time of it
      for (Process process : readyQueue) { //every process in the ready queue
        int nextBurstTime = process.getNextBurst(); //compare burst times of all processes in the list
        if (nextBurstTime < shortestNextBurstTime) { //if shorter burst time was found change the current process
          currentProcess = process;
          shortestNextBurstTime = nextBurstTime;
        }
        readyQueue.peek();
      }
      readyQueue.remove(currentProcess);
      return currentProcess;
    }
  }

  /**
   * Returns the time quantum of this scheduler
   * or -1 if the scheduler does not require a timer interrupt.
   */
  public int getTimeQuantum() {
    return -1;
  }

  /**
   * Returns true the scheduler is preemptive
   */
  @Override
  public boolean isPreemptive () {
    return false;
  }
}
