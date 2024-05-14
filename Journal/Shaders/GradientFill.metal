//
//  GradientFill.metal
//  Journal
//
//  Created by Nico Rückner on 14.05.24.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 rainbow(float2 pos, half4 color, float t) {
  float angle = atan2(pos.y, pos.x) + t;
  
  return half4(
               sin(angle),
               sin(angle + 2),
               sin(angle + 4),
               color.a
               );
}
