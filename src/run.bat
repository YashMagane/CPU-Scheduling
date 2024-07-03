cd ..

::experiment 1 seed 1

java -cp target/classes InputGenerator experiment1/seed1/input_parameters.prp experiment1/seed1/inputs.in
java -cp target/classes Simulator experiment1/seed1/simulator_parameters_Fcfs.prp experiment1/seed1/output_fcfs.out experiment1/seed1/inputs.in
java -cp target/classes Simulator experiment1/seed1/simulator_parameters_RR.prp experiment1/seed1/output_RR.out experiment1/seed1/inputs.in
java -cp target/classes Simulator experiment1/seed1/simulator_parameters_FeedbackRR.prp experiment1/seed1/output_FeedbackRR.out experiment1/seed1/inputs.in
java -cp target/classes Simulator experiment1/seed1/simulator_parameters_SJF.prp experiment1/seed1/output_SJF.out experiment1/seed1/inputs.in
java -cp target/classes Simulator experiment1/seed1/simulator_parameters_IdealSJF.prp experiment1/seed1/output_IdealSJF.out experiment1/seed1/inputs.in

::experiment 1 seed 2

java -cp target/classes InputGenerator experiment1/seed2/input_parameters.prp experiment1/seed2/inputs.in
java -cp target/classes Simulator experiment1/seed2/simulator_parameters_Fcfs.prp experiment1/seed2/output_fcfs.out experiment1/seed2/inputs.in
java -cp target/classes Simulator experiment1/seed2/simulator_parameters_RR.prp experiment1/seed2/output_RR.out experiment1/seed2/inputs.in
java -cp target/classes Simulator experiment1/seed2/simulator_parameters_FeedbackRR.prp experiment1/seed2/output_FeedbackRR.out experiment1/seed2/inputs.in
java -cp target/classes Simulator experiment1/seed2/simulator_parameters_SJF.prp experiment1/seed2/output_SJF.out experiment1/seed2/inputs.in
java -cp target/classes Simulator experiment1/seed2/simulator_parameters_IdealSJF.prp experiment1/seed2/output_IdealSJF.out experiment1/seed2/inputs.in

::experiment 1 seed 3

java -cp target/classes InputGenerator experiment1/seed3/input_parameters.prp experiment1/seed3/inputs.in
java -cp target/classes Simulator experiment1/seed3/simulator_parameters_Fcfs.prp experiment1/seed3/output_fcfs.out experiment1/seed3/inputs.in
java -cp target/classes Simulator experiment1/seed3/simulator_parameters_RR.prp experiment1/seed3/output_RR.out experiment1/seed3/inputs.in
java -cp target/classes Simulator experiment1/seed3/simulator_parameters_FeedbackRR.prp experiment1/seed3/output_FeedbackRR.out experiment1/seed3/inputs.in
java -cp target/classes Simulator experiment1/seed3/simulator_parameters_SJF.prp experiment1/seed3/output_SJF.out experiment1/seed3/inputs.in
java -cp target/classes Simulator experiment1/seed3/simulator_parameters_IdealSJF.prp experiment1/seed3/output_IdealSJF.out experiment1/seed3/inputs.in

::experiment 2 seed 1

java -cp target/classes InputGenerator experiment2/seed1/input_parameters.prp experiment2/seed1/inputs.in
java -cp target/classes Simulator experiment2/seed1/simulator_parameters_Fcfs.prp experiment2/seed1/output_fcfs.out experiment2/seed1/inputs.in
java -cp target/classes Simulator experiment2/seed1/simulator_parameters_RR.prp experiment2/seed1/output_RR.out experiment2/seed1/inputs.in
java -cp target/classes Simulator experiment2/seed1/simulator_parameters_FeedbackRR.prp experiment2/seed1/output_FeedbackRR.out experiment2/seed1/inputs.in
java -cp target/classes Simulator experiment2/seed1/simulator_parameters_SJF.prp experiment2/seed1/output_SJF.out experiment2/seed1/inputs.in
java -cp target/classes Simulator experiment2/seed1/simulator_parameters_IdealSJF.prp experiment2/seed1/output_IdealSJF.out experiment2/seed1/inputs.in

::experiment 2 seed 2

java -cp target/classes InputGenerator experiment2/seed2/input_parameters.prp experiment2/seed2/inputs.in
java -cp target/classes Simulator experiment2/seed2/simulator_parameters_Fcfs.prp experiment2/seed2/output_fcfs.out experiment2/seed2/inputs.in
java -cp target/classes Simulator experiment2/seed2/simulator_parameters_RR.prp experiment2/seed2/output_RR.out experiment2/seed2/inputs.in
java -cp target/classes Simulator experiment2/seed2/simulator_parameters_FeedbackRR.prp experiment2/seed2/output_FeedbackRR.out experiment2/seed2/inputs.in
java -cp target/classes Simulator experiment2/seed2/simulator_parameters_SJF.prp experiment2/seed2/output_SJF.out experiment2/seed2/inputs.in
java -cp target/classes Simulator experiment2/seed2/simulator_parameters_IdealSJF.prp experiment2/seed2/output_IdealSJF.out experiment2/seed2/inputs.in

::experiment 2 seed 3

java -cp target/classes InputGenerator experiment2/seed3/input_parameters.prp experiment2/seed3/inputs.in
java -cp target/classes Simulator experiment2/seed3/simulator_parameters_Fcfs.prp experiment2/seed3/output_fcfs.out experiment2/seed3/inputs.in
java -cp target/classes Simulator experiment2/seed3/simulator_parameters_RR.prp experiment2/seed3/output_RR.out experiment2/seed3/inputs.in
java -cp target/classes Simulator experiment2/seed3/simulator_parameters_FeedbackRR.prp experiment2/seed3/output_FeedbackRR.out experiment2/seed3/inputs.in
java -cp target/classes Simulator experiment2/seed3/simulator_parameters_SJF.prp experiment2/seed3/output_SJF.out experiment2/seed3/inputs.in
java -cp target/classes Simulator experiment2/seed3/simulator_parameters_IdealSJF.prp experiment2/seed3/output_IdealSJF.out experiment2/seed3/inputs.in

::experiment 3 seed 1

java -cp target/classes InputGenerator experiment3/seed1/input_parameters.prp experiment3/seed1/inputs.in
java -cp target/classes Simulator experiment3/seed1/simulator_parameters_Fcfs.prp experiment3/seed1/output_fcfs.out experiment3/seed1/inputs.in
java -cp target/classes Simulator experiment3/seed1/simulator_parameters_RR.prp experiment3/seed1/output_RR.out experiment3/seed1/inputs.in
java -cp target/classes Simulator experiment3/seed1/simulator_parameters_FeedbackRR.prp experiment3/seed1/output_FeedbackRR.out experiment3/seed1/inputs.in
java -cp target/classes Simulator experiment3/seed1/simulator_parameters_SJF.prp experiment3/seed1/output_SJF.out experiment3/seed1/inputs.in
java -cp target/classes Simulator experiment3/seed1/simulator_parameters_IdealSJF.prp experiment3/seed1/output_IdealSJF.out experiment3/seed1/inputs.in

::experiment 3 seed 2
java -cp target/classes InputGenerator experiment3/seed2/input_parameters.prp experiment3/seed2/inputs.in
java -cp target/classes Simulator experiment3/seed2/simulator_parameters_Fcfs.prp experiment3/seed2/output_fcfs.out experiment3/seed2/inputs.in
java -cp target/classes Simulator experiment3/seed2/simulator_parameters_RR.prp experiment3/seed2/output_RR.out experiment3/seed2/inputs.in
java -cp target/classes Simulator experiment3/seed2/simulator_parameters_FeedbackRR.prp experiment3/seed2/output_FeedbackRR.out experiment3/seed2/inputs.in
java -cp target/classes Simulator experiment3/seed2/simulator_parameters_SJF.prp experiment3/seed2/output_SJF.out experiment3/seed2/inputs.in
java -cp target/classes Simulator experiment3/seed2/simulator_parameters_IdealSJF.prp experiment3/seed2/output_IdealSJF.out experiment3/seed2/inputs.in

::experiment 3 seed 3
java -cp target/classes InputGenerator experiment3/seed3/input_parameters.prp experiment3/seed3/inputs.in
java -cp target/classes Simulator experiment3/seed3/simulator_parameters_Fcfs.prp experiment3/seed3/output_fcfs.out experiment3/seed3/inputs.in
java -cp target/classes Simulator experiment3/seed3/simulator_parameters_RR.prp experiment3/seed3/output_RR.out experiment3/seed3/inputs.in
java -cp target/classes Simulator experiment3/seed3/simulator_parameters_FeedbackRR.prp experiment3/seed3/output_FeedbackRR.out experiment3/seed3/inputs.in
java -cp target/classes Simulator experiment3/seed3/simulator_parameters_SJF.prp experiment3/seed3/output_SJF.out experiment3/seed3/inputs.in
java -cp target/classes Simulator experiment3/seed3/simulator_parameters_IdealSJF.prp experiment3/seed3/output_IdealSJF.out experiment3/seed3/inputs.in

PAUSE
