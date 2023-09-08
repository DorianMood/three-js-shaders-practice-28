varying vec2 vUv;

float random(vec2 st)
{
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);
}

void main()
{
    float intensity = random(vUv);

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
