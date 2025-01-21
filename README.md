FIT2014 Assignment 1: Linux Tools, Logic, Regular Expressions, and Induction
Overview
This repository contains solutions for Assignment 1 of FIT2014, focusing on topics such as Linux tools, logic, regular expressions, and induction. The assignment consists of five problems requiring the use of awk scripting, Boolean logic, and mathematical reasoning.

Files
The following files are included in this repository:

prob1.txt: Contains the Boolean expression for Problem 1 in a single line.
prob2.awk: An awk script that generates a Boolean expression for a graph 
𝐺
G to check if it has a triangle-free vertex cover (Problem 2).
prob3.pdf: A PDF with:
The number of clauses of 
𝜙
𝐺
ϕ 
G
​
  in terms of 
𝑚
m (edges) and 
𝑡
t (triangles).
An upper bound for 
𝑡
t in terms of 
𝑚
m.
An upper bound for the number of clauses of 
𝜙
𝐺
ϕ 
G
​
  in terms of 
𝑚
m.
prob4.awk: A modified awk script that outputs a SageMath command to check the satisfiability of 
𝜙
𝐺
ϕ 
G
​
  (Problem 4).
prob5.pdf: A PDF with:
Boolean expression 
𝜙
𝑋
ϕ 
X
​
  for a specific 2-regular graph 
𝑋
X.
Proof by induction that 
𝜙
𝐺
ϕ 
G
​
  for any 2-regular graph 
𝐺
G has at most 
4
𝑛
3
3
4n
​
  clauses.
Instructions
Prerequisites
Linux environment with awk installed.
SageMath for satisfiability testing.
PDF reader for reviewing written solutions.
Usage
Run prob2.awk:

bash
Copy
Edit
awk -f prob2.awk inputFile.txt > outputFile.txt
Replace inputFile.txt with the graph file and outputFile.txt with the desired output file name.

Run prob4.awk:

bash
Copy
Edit
awk -f prob4.awk inputFile.txt > sageCommand.sh
Execute the sageCommand.sh file to check satisfiability:

bash
Copy
Edit
bash sageCommand.sh
Review written solutions in prob3.pdf and prob5.pdf.

Input Format for Graphs
Graphs are represented as edge lists:

The first line contains the number of vertices 
𝑛
n.
Each subsequent line contains an edge in the format i -- j.
Example:

lua
Copy
Edit
7
1 -- 2
1 -- 3
2 -- 3
2 -- 6
4 -- 7
5 -- 7
6 -- 7
Outputs
Problem 2: A Boolean expression 
𝜙
𝐺
ϕ 
G
​
  in CNF format.
Problem 4: A SageMath command to test 
𝜙
𝐺
ϕ 
G
​
 's satisfiability.
Problem 5: Logical and mathematical justifications in PDF format.
Notes
Adhere to naming conventions when submitting.
Ensure all dependencies are installed for smooth execution.
Acknowledgments
This assignment was created as part of the FIT2014 coursework under the Faculty of Information Technology at Monash University.

