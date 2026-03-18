#version 330 core
layout (location = 0) in vec3 aPos;

uniform float offsetX;
uniform float offsetY;
uniform float offsetZ;

void main()
{
    gl_Position = vec4(aPos.x + offsetX, aPos.y + offsetY, aPos.z + offsetZ, 1.0);
}