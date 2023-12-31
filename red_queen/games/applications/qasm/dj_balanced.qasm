OPENQASM 2.0;
include "qelib1.inc";
gate gate_Balanced_Oracle q0,q1,q2,q3,q4,q5 { x q2; cx q0,q5; cx q1,q5; cx q2,q5; cx q3,q5; cx q4,q5; x q2; }
qreg q[6];
creg c[5];
x q[5];
h q[5];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
gate_Balanced_Oracle q[0],q[1],q[2],q[3],q[4],q[5];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
