<script lang="ts">
  import passportHeadshot from "$lib/assets/passport_headshot.jpg";

  const orbitText = "Happy birthday to us all ";
  const orbitChars = orbitText.split("");
  const headshotSize = 12.5;
  const orbitRadius = headshotSize / 2 + 2;
</script>

<div id="content">
  <h1>Welcome to <span class="bailey-town-text">Bailey Town</span>.</h1>
  <h2>It's my birthday.</h2>

  <div class="headshot-orbit">
    <img
      id="passport-headshot"
      src={passportHeadshot}
      alt="Passport headshot"
    />

    <div
      class="orbit-ring"
      style="--total: {orbitChars.length}; --orbit-radius: {orbitRadius}rem"
      aria-hidden="true"
    >
      <div class="orbit-spinner">
        {#each orbitChars as char, i (i)}
          <span style="--i: {i}">{char === " " ? "\u00a0" : char}</span>
        {/each}
      </div>
    </div>

    <p class="sr-only">{orbitText.trim()}</p>
  </div>
</div>

<style>
  #content {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }

  .bailey-town-text {
    background-color: #009;
    color: #fff;
    padding: 0.25rem 0.5rem;
    border-radius: 0.25rem;
    font-family: monospace;
  }

  .headshot-orbit {
    padding-top: 3rem;
    position: relative;
    width: fit-content;
  }

  #passport-headshot {
    anchor-name: --headshot;
    position: relative;
    z-index: 1;
    display: block;
    width: 12.5rem;
    height: 12.5rem;
    object-fit: cover;
    border-radius: 50%;
    border: 0.25rem solid #009;
  }

  .orbit-ring {
    position: absolute;
    position-anchor: --headshot;
    left: anchor(center);
    top: anchor(center);
    translate: -50% -50%;
    pointer-events: none;
    text-transform: uppercase;
    font-family: monospace;
    font-weight: bold;
  }

  .orbit-spinner {
    position: absolute;
    inset: 0;
    animation: orbit-spin 18s linear infinite;
  }

  .orbit-spinner span {
    position: absolute;
    inset: 0;
    margin: auto;
    transform-origin: center center;
    transform: rotate(calc(var(--i) * (360deg / var(--total))))
      translate(0, calc(-1 * var(--orbit-radius)));
  }

  @keyframes orbit-spin {
    to {
      transform: rotate(360deg);
    }
  }

  .sr-only {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0, 0, 0, 0);
    white-space: nowrap;
    border: 0;
  }
</style>
