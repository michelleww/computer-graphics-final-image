// Construct the model transformation matrix. The moon should orbit around the
// origin. The other object should stay still.

mat4 model(bool is_light_1, bool is_light_2, bool is_light_3, bool is_light_4, bool is_light_5, float time)
{
  /////////////////////////////////////////////////////////////////////////////
  if (is_light_1) {
    float theta = - mod(time, 3.5) * (M_PI / 2);
    return rotate_about_y(theta) * uniform_scale(0.05, 6);
  }

  else if (is_light_2 || is_light_3 || is_light_4 || is_light_5) {
    float theta = - mod(time, 15.0) * (M_PI / 2);
    return rotate_about_y(theta) * uniform_scale(0.1, 12);
  }
  else{
    float theta = - mod(time, 14.0) * (M_PI / 2);
    vec3 axis = normalize(vec3(2, 0.5, 0.3));
    mat4 random_rotate = mat4(
              cos(theta) + axis.x * axis.x * (1 - cos(theta)),
              axis.x * axis.y * (1 - cos(theta)) - axis.z * sin(theta),
              axis.x * axis.z * (1 - cos(theta)) + axis.y * sin(theta), 0,

              axis.x * axis.y * (1 - cos(theta)) + axis.z * sin(theta),
              cos(theta) + axis.y * axis.y * (1 - cos(theta)),
              axis.y * axis.z * (1 - cos(theta)) - axis.x * sin(theta), 0,

              axis.x * axis.z * (1 - cos(theta)) - axis.y * sin(theta),
              axis.z * axis.y * (1 - cos(theta)) + axis.x * sin(theta),
              cos(theta) + axis.z * axis.z * (1 - cos(theta)), 0,

              0, 0, 0, 1.0);

    return random_rotate * uniform_scale(1, 0);
  }
  /////////////////////////////////////////////////////////////////////////////
}
