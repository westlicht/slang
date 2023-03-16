// get-attribute-at-vertex.slang.glsl
//TEST_IGNORE_FILE:

#version 450
#extension GL_EXT_fragment_shader_barycentric : require
layout(row_major) uniform;
layout(row_major) buffer;

pervertexEXT layout(location = 0)
in vec4  _S1[3];

layout(location = 0)
out vec4 _S2;

void main()
{
    _S2 = gl_BaryCoordEXT.x * ((_S1)[(0U)]) + gl_BaryCoordEXT.y * ((_S1)[(1U)]) + gl_BaryCoordEXT.z * ((_S1)[(2U)]);
    return;
}
