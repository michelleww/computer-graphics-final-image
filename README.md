Section: LEC 0101

This Final Image is based on the Assignment 6 ShaderPipeline.

It's generating a silver disco ball which rotate randomly in the center with three rays shooting out of the disco ball. These three rays will be rotated along the disco ball and the color changes when rotating.

Edition has been made to the following files:

- Bump_height.glsl

- Bump_Position.glsl

- Bump.fs

- model.glsl

- snap_to_sphere.tes

- translate.glsl

- uniform_scale.glsl

- main.cpp

The changes have been made to these files to adapt the new objects like disco_ball and lights with new features like sticking the disco_ball with lights properly, and rotation of the disco_ball and the lights.

Note that by running on my machine, I am getting warnings which I did not get on the CDF before when running the assignment 8 code:  
`WARNING: Output of tessellation evaluation shader 'pos_fs_in' not read by fragment shader`  
`WARNING: Output of tessellation evaluation shader 'normal_fs_in' not read by fragment shader`  
That may results differences for the disco_ball and lights when running the program on different machines.
