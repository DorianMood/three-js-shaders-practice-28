varying vec2 vUv;

#define PI 3.1415926535897932384626433832795

float random(vec2 st)
{
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);
}

vec2 rotate(vec2 uv, float rotation, vec2 mid)
{
    return vec2(
      cos(rotation) * (uv.x - mid.x) + sin(rotation) * (uv.y - mid.y) + mid.x,
      cos(rotation) * (uv.y - mid.y) - sin(rotation) * (uv.x - mid.x) + mid.y
    );
}

void main()
{

    vec2 rotatedUv = rotate(vUv, PI / 4.0, vec2(0.5));

    vec2 squashedUvX = vec2(rotatedUv.x * 0.2 + 0.4, rotatedUv.y);
    float intensityX = 0.01 / distance(squashedUvX, vec2(0.5));

    vec2 squashedUvY = vec2(rotatedUv.x, rotatedUv.y * 0.2 + 0.4);
    float intensityY = 0.01 / distance(squashedUvY, vec2(0.5));

    float intensity = intensityX * intensityY;

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
