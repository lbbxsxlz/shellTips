#!/bin/bash

startHex=0x100000

baseHex=${startHex:2}

endDec=$(( $((16#$baseHex)) + 1048576 * 16 ))

endHex=$(echo "obase=16;$endDec"|bc)

end=0x${endHex}

echo $end
