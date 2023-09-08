varying vec2 vUv;

float random(vec2 st)
{
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);
}

void main()
{
    float intensity = random(
        vec2(floor(vUv.x * 10.0) / 10.0,
        floor(vUv.y * 10.0 + 0.5) / 10.0)
    );

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
