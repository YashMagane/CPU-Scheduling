import java.util.Properties;
import java.util.LinkedList;
import java.util.Queue;

/**
 * Shortest Job First
 * cand_num = 249763
 */
public class SJFScheduler extends AbstractScheduler {

  private double alphaBurstEst;
  private double prevEst;
  private Queue<Process> readyQueue;
  private double initBurstEst;

  /**
   * Creates an instance of the SJF scheduler
   * @param parameters given
   */
  public void initialize(Properties parameters) {
    initBurstEst = Double.parseDouble(parameters.getProperty("initialBurstEstimate"));
    alphaBurstEst = Double.parseDouble(parameters.getProperty("alphaBurstEstimate"));
    readyQueue = new LinkedList<>();
  }

  /**
   * Adds a process to the ready queue.
   * usedFullTimeQuantum is true if process is being moved to ready
   * after having fully used its time quantum.
   */
  public void ready(Process process, boolean usedFullTimeQuantum) {
    process.setPriority((int) avg(process.getPriority(), process.getRecentBurst()));
    process.setPriority((int) avg(prevEst, process.getRecentBurst()));
    readyQueue.offer(process);
  }

  /**
   * Measures the average of all burst times exponentially
   * @param oldEst previous estimate of the burst time
   * @param recentBurst most recent burst time for the process
   * @return
   */
  private double avg(double oldEst, double recentBurst) {
    double newEst = alphaBurstEst * recentBurst + (1 - alphaBurstEst) * oldEst;
    prevEst = newEst;
    return prevEst;
  }

  /**
   * Removes the next process to be run from the ready queue 
   * and returns it. 
   * Returns null if there is no process to run.
   */
  public Process schedule() {
    return readyQueue.poll();
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
  public boolean isPreemptive() {
    return false;
  }
}
