varying vec2 vUv;

float random(vec2 st)
{
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);
}

void main()
{
    vec2 squashedUvX = vec2(vUv.x * 0.2 + 0.4, vUv.y);
    float intensityX = 0.01 / distance(squashedUvX, vec2(0.5));

    vec2 squashedUvY = vec2(vUv.x, vUv.y * 0.2 + 0.4);
    float intensityY = 0.01 / distance(squashedUvY, vec2(0.5));

    float intensity = intensityX * intensityY;

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
