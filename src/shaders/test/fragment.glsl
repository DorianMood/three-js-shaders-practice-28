varying vec2 vUv;

void main()
{
    float x = floor(vUv.x * 10.0) / 10.0;
    float y = floor(vUv.y * 10.0) / 10.0;

    float intensity = x * y;

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
