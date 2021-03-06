void sample11()
{

  background(255);

  NoiseGenerator ngen = new NoiseGenerator(0.01, 0.2);
  ngen.setNoiseOctaveParam(4, 0.5);
  ngen.noiseScale = 5.0;
  //ngen.forceScale = 5.5;

  runner.addLayer( new ParticlesLayer(10000,500, color(0, 30, 30), ngen) {
    public void draw(Particle p)
    {
      strokeWeight(1);
      stroke(p.c, 10);
      line(p.prev.x, p.prev.y, p.pos.x, p.pos.y);
    }
  });

}