# PACT: A Standard Cell Level to Architectural Level Parrallel Compact Thermal Simulator
All the source code are located inside the /src folder include the SuperLU solver as well as the SPICE solvers. SPICE solvers are currently seperate into SPICE_steady and SPICE_transient. 

To run thermal simulations, go to /RuntimeAnalysis/scripts/ and run qsub_10mm.py, qsub_20mm.py, and qsub_Hetero_500um.py . You can choose various synthetic power profiles and floorplans within the python script. 



# Options for Solvers: 

go to the /RuntimeAnalysis/modelParams_files/ and find the 'modelparam' file you want to modify. Go to the '[Solver]' section and modfiy both the solver name as well as the wrapper file. For using SPICE solver, you have to have the __Xyce 6.12__ installed in your system. Supported solvers are listed below:

## SuperLU (only for steady state): 

name = SuperLU

wrapper = SuperLU.py

## SPICE_steady (.OP):

name = SPICE_steady

wrapper = SPICESolver_steady.py

Steady-state grid temperature files are saved in ~/src folder as RC_steady_prachi.cir.csv

## SPICE_transient (.TRAN):

name = SPICE_transient

wrapper = SPICESolver_transient.py

Note that, using SPICE transient will create an error. This error is for mapping the steady-state grid temperatrues back to block temperatrues. You can ignore the error. 

transient grid temperature files are saved in ~/src folder as RC_transient_prachi.cir.csv

# Potential Error and Solutions: 

Error: cannot find grid mode, go to the 'modelparam' file and add "grid_mode = max" in the '[Grid]' section.

Error: no 'Cu', uncomment the '[Cu]' section in the 'modelparam' file.

# Action Items:
Clean up the repo 

Rewrite Readme and include more details

Define a universal path for the user to directly use

Aditya test

Release the first version of the tool

HotSpot medium cost heat sink

Liquid cooling via microchannels


