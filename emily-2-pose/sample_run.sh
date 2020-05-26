# Correspondence phase:
./../bin/corres_resolve pose_ref.obj emily_ref.obj pose_emily.cons [1:10:50]

# horse_ref.obj:     source reference mesh
# camel_ref.obj:     target reference mesh
# horse_camel.cons:  vertex constraints (marker points), user can specify marker points corrstool.
# [1:10:50] :        closest point iteration procedure: weight increase from 1 to 50, increment step: 10.

# output files: 
#    out.obj:       deformed source mesh
#    out.tricorrs:  triangle correspondence resolved by corres_resolve


# Deformation transfer phase:
./../bin/dtrans pose_ref.obj emily_ref.obj out.tricorrs pose/pose_*.obj


# Generated camel poses are saved as out_##.obj
./../bin/corrstool pose/pose_01.obj out_1.obj
