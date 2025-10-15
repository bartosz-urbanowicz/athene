/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        './app/views/**/*.{html,erb,haml,slim}',  // all views and partials
        './app/helpers/**/*.rb',                   // any helper-generated classes
        './app/javascript/**/*.{js,jsx,ts,tsx}',  // JS files with Tailwind classes
        './app/assets/stylesheets/**/*.css',      // Tailwind CSS entry & imports
        './app/components/**/*.{html,erb,slim}'   // optional: for ViewComponents
    ],
    theme: {
        extend: {},
    },
    plugins: [],
}
