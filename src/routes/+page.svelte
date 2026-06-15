<script lang="ts">
  import passportHeadshot from "$lib/assets/passport_headshot.jpg";

  const orbitText = "Happy birthday to us all ";
  const orbitChars = orbitText.split("");
  const headshotSize = 15;
  const orbitRadius = headshotSize / 2;
  let backgroundColor = $state("#cb6006");
</script>

<div class="container">
  <div id="content" style="--background-color: {backgroundColor}">
    <!-- svelte-ignore a11y_distracting_elements -->
    <marquee class="marquee-banner">{"birthday birthday birthday"}</marquee>
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
    <h1 style="text-align: center;">
      Welcome to <span class="bailey-town-text">Bailey Town</span>.
    </h1>
    <h2>It's my birthday.</h2>
    <p>Stay tuned for more details.</p>
  </div>
  <label class="color-picker">
    Go ahead, change the color:
    <input type="color" bind:value={backgroundColor} />
  </label>
</div>

<style>
  .container {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
  }

  #content {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 1rem;
    flex: 1;
  }

  .bailey-town-text {
    background-color: var(--background-color);
    color: #fff;
    padding: 0.25rem 0.5rem;
    border-radius: 0.25rem;
    font-family: monospace;
  }

  .headshot-orbit {
    padding-bottom: 1rem;
    position: relative;
    width: fit-content;
  }

  #passport-headshot {
    anchor-name: --headshot;
    position: relative;
    display: block;
    width: 15rem;
    height: 15rem;
    object-fit: cover;
    border-radius: 50%;
    border: 1.2rem solid var(--background-color);
    box-shadow: 0 0 1rem 0.5rem var(--background-color);
  }

  .orbit-ring {
    position: absolute;
    position-anchor: --headshot;
    left: anchor(center);
    top: anchor(center);
    translate: -50% -50%;
    pointer-events: none;
    text-transform: uppercase;
    color: #fff;
    font-weight: bolder;
    font-family: monospace;
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

  .marquee-banner {
    font-family: monospace;
    font-size: 2rem;
    font-weight: bold;
    color: white;
    text-transform: uppercase;
    background-color: var(--background-color);
    margin-bottom: 1rem;
    width: 100%;
  }

  .color-picker {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-family: monospace;
    margin: 0.5rem auto;
    flex-shrink: 0;
  }

  .color-picker:hover {
    cursor: pointer;
    text-decoration: underline;
  }

  .color-picker input[type="color"] {
    width: 1.5rem;
    height: 1.5rem;
    padding: 0;
    border: none;
    border-radius: 0.25rem;
    cursor: pointer;
    background: none;
  }
</style>
