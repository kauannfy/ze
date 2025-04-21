repeat(2){
    if sprite_index = spr_brawler_run or sprite_index = spr_brawler_run_b{
        var random_particulax = random_range(-10, 2)
        var random_particulay = random_range(2, -2)
        instance_create_layer(x + random_particulax, y + 6 + random_particulay, "Instances", obj_particula, {sprite_index: spr_pegada})
    }
}

alarm_set(0, 5)