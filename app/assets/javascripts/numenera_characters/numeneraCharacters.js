$(document).on('turbolinks:load', () => {
    let characterSkills = () => {
        let newEsotery = document.getElementById('add-numenera-esotery');
        let newSkill = document.getElementById('add-numenera-character-skill');

        let editEsoteryBtn = document.getElementsByClassName('edit-numenera-esotery-button');
        let editSkillBtn = document.getElementsByClassName('edit-numenera-character-skill-button');

        let cancelEsotryBtn = document.getElementsByClassName('cancel-esotery-edit');
        let cancelSkillBtn = document.getElementsByClassName('cancel-skill-edit');
        let editEsotery = document.getElementsByClassName('edit-numenera-esotery');
        let editSkill = document.getElementsByClassName('edit-numenera-character-skill');

        for (let i = 0; i < editEsoteryBtn.length; i++) {
            editEsoteryBtn[i].addEventListener('click', () => {
                editEsotery[i].style.display = 'block';
            })
        }

        for (let i = 0; i < editSkillBtn.length; i++) {
            editSkillBtn[i].addEventListener('click', () => {
                editSkill[i].style.display = 'block';
            })
        }

        for(let i = 0; i < cancelEsotryBtn.length; i++) {
            cancelEsotryBtn[i].addEventListener('click', () => {
                editEsotery[i].style.display = 'none';
            })
        }

        for (let i = 0; i < cancelSkillBtn.length; i++) {
            cancelSkillBtn[i].addEventListener('click', () => {
                console.log('click', i)
                editSkill[i].style.display = 'none';
            })
        }

        $("#add-numenera-character-skill-button").click(() => {
            newSkill.style.display = "block";
        });


        $('#add-numenera-esotery-button').click(() => {
            newEsotery.style.display = "block";
        })

        $('#cancel-add-skill').click(() => {
            newSkill.style.display = 'none';
        })

        $('#cancel-add-esotery').click(() => {
            newEsotery.style.display = 'none';
        })
    }   

    characterSkills();
})