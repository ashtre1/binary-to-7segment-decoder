library IEEE;
use IEEE.std_logic_1164.all;

entity SEGLOGIC is
	port(A,B,C,D: in bit; O1, O2, O3, O4, O5, O6, O7: out bit);
end SEGLOGIC;

architecture 7SegmentFnc of SEGLOGIC is
begin
  O1 <= (not a and c) or (not a and b and d) or (a and not b and not c) or (not a and not b and not d);
  O2 <= (not a and not b) or (not a and not c and not d) or (not a and c and d) or (not b and not c);
  O3 <= (not a and d) or (not a and b) or (not b and not c);
  O4 <= (not a and not b and c) or (not a and b and not c and d) or (not a and c and not d) or (a and not b and not c) or (not a and not b and not d);
  O5 <= (not a and c and not d) or (not b and not c and not d);
  O6 <= (not a and b and not c) or (not a and b and not d) or (a and not b and not c) or (not a and not c and not d);
  O7 <= (not a and not b and c) or (not a and b and not c) or (a and not b and not c) or (not a and c and not d);
end 7SegmentFnc;

