#include <metal_stdlib>
using namespace metal;
#include "RasterizerData.h"
#include "ShaderTypes.h"

#pragma mark Default Shader
[[fragment]]
float4 fragmentDefaultShader(RasterizerData in [[stage_in]], texture2d<half> colorTexture [[texture(TI_NoneInputImage)]]) {
    /// Texture sampler
    constexpr sampler textureSampler(mag_filter::linear, min_filter::linear);

    half4 colorSample = colorTexture.sample(textureSampler, in.textureCoordinate);

    return static_cast<float4>(colorSample);
}
