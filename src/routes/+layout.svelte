<script lang="ts">
  import favicon from "$lib/assets/favicon.svg";

  let { children } = $props();
</script>

<svelte:head>
  <link rel="icon" href={favicon} />
</svelte:head>

<section>
  {@render children()}
</section>

<style>
  :global {
    /*
      Josh's Custom CSS Reset
      https://www.joshwcomeau.com/css/custom-css-reset/
    */

    *,
    *::before,
    *::after {
      box-sizing: border-box;
    }

    *:not(dialog) {
      margin: 0;
    }

    @media (prefers-reduced-motion: no-preference) {
      html {
        interpolate-size: allow-keywords;
      }
    }

    body {
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
      /* background-color: #eddfd3; */
      /* color: #302f2f; */
    }

    img,
    picture,
    video,
    canvas,
    svg {
      display: block;
      max-width: 100%;
    }

    input,
    button,
    textarea,
    select {
      font: inherit;
    }

    p,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
      overflow-wrap: break-word;
    }

    p {
      text-wrap: pretty;
    }
    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
      text-wrap: balance;
    }
    h1,
    h2,
    h3 {
      font-family: "Aleo", serif;
    }

    #root,
    #__next {
      isolation: isolate;
    }
  }
</style>
