//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package multitargettracking;

//
// Target to be tracked
//
simple Target extends Entity
{
    parameters:
        int id;
        string pathFile = default("../simulations/path_1.txt");
        double range = default(50); // Range in which sensors will receive over-threshold signal (simulation)
        string signal = default("bit string representing signal");
        @class(Target);
        @display("i=block/broadcast;is=vs;p=$x,$y;r=$range,white,red");
        
    gates:
        inout gate[];
}
