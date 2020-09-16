The whole compression block is designed in diagram block
So I use Quartus to generate the HDL declaration files to show all instances and how wires connected
Any other module appears in any file but not included in this folder is Quartus built-in API. 
The following diagram shows the hierarchy of the design

   TOP                  1st layer 
+-----------+       +--------------+     
| compression | --> | new coe data | 
+-----------+       +--------------+    
        
                    +-------------------+     
                --> | uncompressed read |                     
                    +-------------------+     

                    +--------------+     
                --> | word aligner | 
                    +--------------+   
  
                    +--------------+     
                --> | bit_to_mask  | 
                    +--------------+        2nd layer
 
                    +-----------+         +------------+   
                --> | lossless  |    -->  |bit_to_dist |
                    +-----------+         +------------+
                                          +-----------------+   
                                     -->  |lossless shifter |
                                          +-----------------+

                    +--------------+      +----------+   
                --> | min_range_cal| -->  |min_range |
                    +--------------+      +----------+
    
