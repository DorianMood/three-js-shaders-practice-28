varying vec2 vUv;

void main()
{
    float intensity = vUv.y * 10.0;

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
