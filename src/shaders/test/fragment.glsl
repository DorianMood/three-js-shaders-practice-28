varying vec2 vUv;

float random(vec2 st)
{
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);
}

void main()
{
    vec2 squashedUv = vec2(vUv.x * 0.2 + 0.4, vUv.y);
    float intensity = 0.02 / distance(squashedUv, vec2(0.5));

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
