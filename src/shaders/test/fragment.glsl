varying vec2 vUv;

void main()
{
    float intensity = (vUv.x - 0.5) * 2.0;
    intensity = abs(intensity);

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
