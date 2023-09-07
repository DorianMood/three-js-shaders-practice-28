varying vec2 vUv;

void main()
{
    float intensity = step(0.4, mod(vUv.x * 10.0, 1.0));
    intensity *= step(0.8, mod(vUv.y * 10.0, 1.0));

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
