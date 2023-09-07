varying vec2 vUv;

void main()
{
    float intensity = mod(vUv.y * 10.0, 1.0);

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
