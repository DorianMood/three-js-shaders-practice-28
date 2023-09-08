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

    float intensity = 1.0 - step(0.01, abs(distance(vUv, vec2(0.5)) - 0.25));

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
