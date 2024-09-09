The aim of this assignment is to investigate the performance of different CPU scheduling algorithms. You will use a discrete event simulator to conduct experiments on different processor loads and schedulers, and analyse the results to determine in which situations each scheduling algorithm works most efficiently. You will then write a report on your experiments, communicating your findings in an effective manner.

Your Implementation
As part of this project you will need to write Java code for: 

1. calculating the performance metrics (as defined in the lectures) by completing the corresponding functions in the file Process.java.

turnaround time of the process: getTurnaroundTime()
waiting time: getWaitingTime()
response time: getResponseTime()
Remark: These functions are called by the simulator when a process terminates to produce the output file. You will be able to compute CPU utilisation and throughput, separately, by analysing the output data.

2. the following scheduling algorithms by completing the corresponding .java files. You will have to override some methods from the AbstractScheduler class -- read carefully their documentation in the source code:

Round Robin (RRScheduler.java) - Read the timeQuantum from the parameters. The scheduler is non-preemptive*.
Ideal Shortest Job First (IdealSJFScheduler.java) - You can use the getNextBurst() method to get the duration of the next burst for each process. The scheduler is non-preemptive.
Multi-level feedback queue with Round Robin (FeedbackRRScheduler.java) - The easiest way to compute a multi-level queue is to use a priority queue where priorities correspond to the levels (lower number means higher priority). Implement the following feedback: a process is demoted if it used its full time slice. The scheduler is preemptive.
Shortest Job First using exponential averaging (SJFScheduler.java) - Read the initialBurstEstimate (
) and alphaBurstEstimate (
) from the parameters. For each process,  use exponential averaging to estimate the duration of the process' next burst (which will then define the priority of the process) from its previous burst durations. You can use the getRecentBurst() method to get the duration of the most recent CPU burst of a process. The scheduler is non-preemptive.
You may add debug output to your implementation. Make sure that you print to System.out only.

Remark: Note that there are placeholders, as TODO comments, in the code, where you are expected to add code. You may have to create new or override existing methods as well - all abstract methods in the AbstractScheduler class must be overridden, otherwise your code won't compile. The implementation of the schedulers should be based on the material discussed in the lectures, where they are clearly defined. Do NOT alter the structure of the given classes but only add code where deemed necessary.

*Important: here we say that the RR scheduler is non-preemptive which contradicts what was presented in the lecture. This is because the simulator considers as preemptive a scheduler that will preempt a running process only when a process (new or previously blocked) appears in the ready queue, but not when the allocated time quantum is consumed by a process. Dealing with completed time quanta is done at a different point in the code (setRunning() in the BurstProcess class). The RR scheduler will therefore be dealt with as non-preemptive here, as described above.

Your Experiments
Using the simulator and the schedulers you developed, set up three experiments to investigate three different aspects of scheduling algorithms. You are free to choose which aspects you target - it is important that you clearly explain in your report what the specific purpose of each experiment is and which conclusions your draw from the experimental data that you gather. 

General questions of interest are for instance:

How does the process characteristics affect the choice of a good scheduling algorithm?
What is the influence of the workload?
What is the effect of the scheduling algorithm parameters?
How does the cost for running the scheduler affect performance?
Remarks: You will have to adjust the workload (CPU utilisation) of your input data by finding appropriate combinations of parameter values for the input generator. Hint: The CPU time of the idle process (process ID 0) tells you something about the CPU utilisation. It is important to present averaged results over several input data sets created using different random seed values. Note that we ask you to investigate specific aspects related to the given schedulers, so the experiments should be designed in a way that each experiment includes all schedulers. Running one experiment (e.g. by changing a specific parameter) using three schedulers does not mean that you are running three experiments!
