#version 450 core

in  vec2 v_tex_coords;
out vec4 frag_color;

uniform sampler2D tex;
uniform vec3      default_color;
uniform vec3      hovering_color;
uniform bool      is_hovering;

void main()
{
    float alpha = texture(tex, vec2(v_tex_coords.x, 1 - v_tex_coords.y)).r;

    frag_color = vec4(is_hovering ? hovering_color : default_color, max(0.1f, alpha));
}
