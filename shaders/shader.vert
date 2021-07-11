#version 450

layout(location=0) in vec3 inPos;
layout(location=1) in vec3 inColor;

layout(location=0) out vec4 outColor;

out gl_PerVertex
{
  vec4 gl_Position;
};

layout(binding=0) uniform Matrices
{
  mat4 mtxTransform;
};


void main()
{
  gl_Position = mtxTransform * vec4(inPos, 1.0);
  outColor = vec4(inColor, 1.0);
}
