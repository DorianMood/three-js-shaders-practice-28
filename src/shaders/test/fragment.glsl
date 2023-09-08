varying vec2 vUv;

void main()
{
    float strength = 2.0;

    float intensityX = abs((vUv.x - 0.5) * strength);
    float intensityY = abs((vUv.y - 0.5) * strength);

    float square1 = step(0.2, max(intensityX, intensityY));
    float square2 = 1.0 - step(0.25, max(intensityX, intensityY));


    float intensity = square1 * square2;

    gl_FragColor = vec4(intensity, intensity, intensity, 1.0);
}
