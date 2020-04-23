// Create a bumpy surface by using procedural noise to generate a new 3D position
// via displacement in normal direction.
vec3 bump_position(bool is_light_1, bool is_light_2, bool is_light_3, bool is_light_4, bool is_light_5, vec3 s)
{
  /////////////////////////////////////////////////////////////////////////////
  return s + bump_height(is_light_1, is_light_2, is_light_3, is_light_4, is_light_5, s) * normalize(s);
  /////////////////////////////////////////////////////////////////////////////
}
