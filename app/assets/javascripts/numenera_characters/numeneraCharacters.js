$(document).on('turbolinks:load', () => {
    let characterSkills = () => {
        let newEsotery = document.getElementById('add-numenera-esotery');
        let newSkill  = document.getElementById('new_numenera_character_skill');

        let editEsoteryBtn = document.getElementsByClassName('edit-numenera-esotery-button');
        let editEsotery = document.getElementsByClassName('edit-numenera-esotery');
        let editSkillBtn = document.getElementsByClassName('edit-numenera-character-skill-button')
        let editSkill = document.getElementsByClassName('edit-numenera-character-skill')

        for(let i=0; i< editEsoteryBtn.length; i++){
            editEsoteryBtn[i].addEventListener('click', () => {
                editEsotery[i].style.display = 'block'
            })
        }

        for(let i = 0; i < editSkillBtn.length; i++) {
            editSkillBtn[i].addEventListener('click', () => {
                editSkill[i].style.display = 'block';
            })
        }

        $("#add-numenera-character-skill-button").click(() => {
            newSkill.style.display = "block";
        });


        $('#add-numenera-esotery-button').click(() => {
            newEsotery.style.display = "block"
        })
    }

    characterSkills();
})
