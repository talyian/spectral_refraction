#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

out vec3 ourColor;
out vec2 TexCoord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

uniform float t;

void main() {
    // gl_Position = vec4(aPos.x * cos(t) - aPos.y * sin(t),
    //   aPos.x * sin(t) + aPos.y * cos(t), aPos.z, 1.0);
    gl_Position = projection * view * model * vec4(aPos, 1.0);
    ourColor = aColor;
    TexCoord = aTexCoord;
}