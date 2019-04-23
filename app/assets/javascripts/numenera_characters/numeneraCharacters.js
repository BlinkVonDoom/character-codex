$(document).on('ready', () => {
    let characterSkills = () => {
        let newSkill  = document.getElementById('new_numenera_character_skill')
        let editSkill = document.getElementById('edit-numenera-character-skill')
        $("#add-numenera-character-skill-button").click(() => {
            newSkill.style.display = "block";
        });
        
        $("#edit-numenera-character-skill-button").click(() => {
           editSkill.style.display = "block";
        });
    }
})
