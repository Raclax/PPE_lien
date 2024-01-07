document.addEventListener("DOMContentLoaded", function () {
    // Select the container and title elements
    const container = document.querySelector('.container');
    const titleContainer = document.querySelector('.title-container');

    // Function to animate the container and title
    function animateContainer() {
        container.style.display = 'flex'; // Show the container
        container.style.animation = 'slideDown 1s forwards'; // Slide down animation

        // Title typing effect
        const titleText = titleContainer.innerText;
        titleContainer.innerText = ''; // Empty the title
        let index = 0;

        function typeTitle() {
            if (index < titleText.length) {
                titleContainer.innerText += titleText.charAt(index);
                index++;
                setTimeout(typeTitle, 50); // Adjust typing speed
            }
        }

        typeTitle();
    }

    // Trigger the animation after a delay (adjust the delay as needed)
    setTimeout(animateContainer, 500);
});
