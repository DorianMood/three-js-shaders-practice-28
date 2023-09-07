varying vec2 vUv;

void main()
{
    float intensity = mod(vUv.y * 10.0, 1.0);
    intensity = step(0.8, intensity);

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
