varying vec2 vUv;

void main()
{
    float intensityX = step(0.4, mod(vUv.x * 10.0, 1.0));
    intensityX *= step(0.8, mod(vUv.y * 10.0 + 0.2, 1.0));

    float intensityY = step(0.4, mod(vUv.y * 10.0, 1.0));
    intensityY *= step(0.8, mod(vUv.x * 10.0 + 0.2, 1.0));

    float intensity = intensityX + intensityY;

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
