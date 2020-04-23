// Create a bumpy surface by using procedural noise to generate a height (
// displacement in normal direction).
float bump_height(bool is_light_1, bool is_light_2, bool is_light_3, bool is_light_4, bool is_light_5, vec3 s)
{
  /////////////////////////////////////////////////////////////////////////////
  if (is_light_1 || is_light_2 || is_light_3 || is_light_4 || is_light_5){
    float light = improved_perlin_noise(s * 1.5);
    return smooth_heaviside(light, 0.5);
  } else {
    float disco_ball = 3.5 * improved_perlin_noise(s * 10);
    return smooth_heaviside(disco_ball, 1.5);
  }
  /////////////////////////////////////////////////////////////////////////////
}
