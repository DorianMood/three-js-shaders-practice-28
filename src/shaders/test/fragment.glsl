varying vec2 vUv;

void main()
{
    float strength = 2.0;

    float intensityX = abs((vUv.x - 0.5) * strength);
    float intensityY = abs((vUv.y - 0.5) * strength);

    float intensity = step(0.5, max(intensityX, intensityY));

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
