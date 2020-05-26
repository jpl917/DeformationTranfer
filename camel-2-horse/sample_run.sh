# Correspondence phase:
./../bin/corres_resolve horse_ref.obj camel_ref.obj horse_camel.cons [1:10:50]

# horse_ref.obj:     source reference mesh
# camel_ref.obj:     target reference mesh
# horse_camel.cons:  vertex constraints (marker points), user can specify marker points corrstool.
# [1:10:50] :        closest point iteration procedure: weight increase from 1 to 50, increment step: 10.

# output files: 
#    out.obj:       deformed source mesh
#    out.tricorrs:  triangle correspondence resolved by corres_resolve


# Deformation transfer phase:
./../bin/dtrans horse_ref.obj camel_ref.obj out.tricorrs horse/horse-*.obj


# Generated camel poses are saved as out_##.obj
./../bin/corrstool horse/horse-01.obj out_0.obj
# ...
# There should be 9 output files generated by dtrans, you can inspect'em using corrstool, or modelviz.
