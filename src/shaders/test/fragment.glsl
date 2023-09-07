varying vec2 vUv;

void main()
{
    float intensity = 1.0 - vUv.y;

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
