syn match   WB_Comment	"#.*$" contains=WB_Todo,@Spell
syn keyword WB_Todo		FIXME NOTE NOTES TODO XXX contained

syn keyword WB_repeat try_for_range try_for_range_backwards try_for_parties try_for_agents try_for_prop_instances try_for players try_for_end
syn keyword WB_conditional end_try try_end try_begin else_try_begin else_try

syn keyword WB_scripts call_script store_script_param_1 store_script_param_2 store_script_param

syn match WB_get_set "\(troop\|party\|faction\|scene\|party_template\|agent\|quest\|item\|player\|team\|scene_prop\)_[sg]et_slot"

syn keyword WB_condition ge eq gt is_between neg this_or_next lt neq le
syn match   WB_slot_condition "\(troop\|party\|faction\|scene\|party_template\|agent\|quest\|item\|player\|team\|scene_prop\)_slot_\(eq\|ge\)"

syn match WB_register "reg\(1[0-1][0-9]\|12[0-7]\|\d\{1,2}\)"
syn match WB_position "pos\(1[0-1][0-9]\|12[0-7]\|\d\{1,2}\)"
syn match WB_string     "s\(1[0-1][0-9]\|12[0-7]\|\d\{1,2}\)"

syn keyword WB_operator hero_can_join hero_can_join_as_prisoner party_can_join party_can_join_as_prisoner troops_can_join troops_can_join_as_prisoner party_can_join_party main_party_has_troop party_is_in_town party_is_in_any_town party_is_active player_has_item troop_has_item_equipped troop_is_mounted troop_is_guarantee_ranged troop_is_guarantee_horse

syn keyword WB_val_operator val_lshift val_rshift val_add val_sub val_mul val_div val_mod val_min val_max val_clamp val_abs val_or val_and

syn region WB_all_strings start=+\z(['"]\)+ end="\z1" keepend

syn match WB_script_name    "script_\w*"    containedin=WB_all_strings
syn match WB_script_cf_name "script_cf_\w*" containedin=WB_all_strings
syn match WB_local_variable ":\w*"          containedin=WB_all_strings
syn match WB_quick_string   "@\w*"          containedin=WB_all_strings



hi def link WB_Comment      Comment
hi def link WB_Todo         Todo

hi def link WB_repeat       Repeat
hi def link WB_conditional  Conditional

hi def link WB_operator         Operator
hi def link WB_condition        Operator
hi def link WB_slot_condition   Operator

hi def link WB_val_operator   Function

hi def link WB_get_set      Function
hi def link WB_register     Variable
hi def link WB_position     Variable
hi def link WB_string       Variable

hi def link WB_all_strings  String
hi def link WB_local_variable   String
hi def link WB_quick_string String

hi def link WB_scripts      Define
hi def link WB_script_name  Define
hi def link WB_script_cf_name  Operator

" entering_town
" map_free
" encountered_party_is_attacker
" conversation_screen_is_active
" 
" in_meta_mission
" 
" set_player_troop
" 
" store_repeat_object
" 
" get_operation_set_version
" 
" set_physics_delta_time
" 
" set_result_string
" 
" is_camera_in_first_person
" set_camera_in_first_person
" game_key_get_mapped_key_name
" 
" key_is_down
" key_clicked
" game_key_is_down
" game_key_clicked
" mouse_get_position
" omit_key_once
" clear_omitted_keys
" 
" get_global_cloud_amount
" set_global_cloud_amount
" get_global_haze_amount
" set_global_haze_amount
" 
" party_end_battle
" 
" check_quest_active
" check_quest_finished
" check_quest_succeeded
" check_quest_failed
" check_quest_concluded
" 
" is_trial_version
" is_edit_mode_enabled
" 
" options_get_damage_to_player
" options_set_damage_to_player
" options_get_damage_to_friends
" options_set_damage_to_friends
" options_get_combat_ai
" options_set_combat_ai
" options_get_campaign_ai
" options_set_campaign_ai
" options_get_combat_speed
" options_set_combat_speed
" options_get_battle_size
" options_set_battle_size
" 
" profile_get_banner_id
" profile_set_banner_id
" 
" get_achievement_stat
" set_achievement_stat
" unlock_achievement
" 
" send_message_to_url
" 
" #
" multiplayer_send_message_to_server
" multiplayer_send_int_to_server
" multiplayer_send_2_int_to_server
" multiplayer_send_3_int_to_server
" multiplayer_send_4_int_to_server
" multiplayer_send_string_to_server
" multiplayer_send_message_to_player
" multiplayer_send_int_to_player
" multiplayer_send_2_int_to_player
" multiplayer_send_3_int_to_player
" multiplayer_send_4_int_to_player
" multiplayer_send_string_to_player
" get_max_players
" player_is_active
" player_get_team_no
" player_set_team_no
" player_get_troop_id
" player_set_troop_id
" player_get_agent_id
" player_get_gold
" player_set_gold
" player_spawn_new_agent
" player_add_spawn_item
" multiplayer_get_my_team
" multiplayer_get_my_troop
" multiplayer_set_my_troop
" multiplayer_get_my_gold
" multiplayer_get_my_player
" multiplayer_clear_scene
" multiplayer_is_server
" multiplayer_is_dedicated_server
" game_in_multiplayer_mode
" multiplayer_make_everyone_enemy
" player_control_agent
" player_get_item_id
" player_get_banner_id
" game_get_reduce_campaign_ai
" multiplayer_find_spawn_point
" set_spawn_effector_scene_prop_kind
" set_spawn_effector_scene_prop_id
" 
" player_set_is_admin
" player_is_admin
" player_get_score
" player_set_score
" player_get_kill_count
" player_set_kill_count
" player_get_death_count
" player_set_death_count
" player_get_ping
" player_is_busy_with_menus
" player_get_is_muted
" player_set_is_muted
" player_get_unique_id
" player_get_gender
" 
" team_get_bot_kill_count
" team_set_bot_kill_count
" team_get_bot_death_count
" team_set_bot_death_count
" team_get_kill_count
" team_get_score
" team_set_score
" team_set_faction
" team_get_faction
" player_save_picked_up_items_for_next_spawn
" player_get_value_of_original_items
" player_item_slot_is_picked_up
" 
" kick_player
" ban_player
" save_ban_info_of_player
" ban_player_using_saved_ban_info
" 
" start_multiplayer_mission
" 
" server_add_message_to_log
" 
" server_get_renaming_server_allowed
" server_get_changing_game_type_allowed=
" ##477
" server_get_combat_speed
" server_set_combat_speed
" server_get_friendly_fire
" server_set_friendly_fire
" server_get_control_block_dir
" server_set_control_block_dir
" server_set_password
" server_get_add_to_game_servers_list
" server_set_add_to_game_servers_list
" server_get_ghost_mode
" server_set_ghost_mode
" server_set_name
" server_get_max_num_players
" server_set_max_num_players
" server_set_welcome_message
" server_get_melee_friendly_fire
" server_set_melee_friendly_fire
" server_get_friendly_fire_damage_self_ratio
" server_set_friendly_fire_damage_self_ratio
" server_get_friendly_fire_damage_friend_ratio
" server_set_friendly_fire_damage_friend_ratio
" server_get_anti_cheat
" server_set_anti_cheat
" 
" 
" ##
" troop_slot_eq
" party_slot_eq
" faction_slot_eq
" scene_slot_eq
" party_template_slot_eq
" agent_slot_eq
" quest_slot_eq
" item_slot_eq
" player_slot_eq
" team_slot_eq
" scene_prop_slot_eq
" 
" ##
" troop_slot_ge
" party_slot_ge
" faction_slot_ge
" scene_slot_ge
" party_template_slot_ge
" agent_slot_ge
" quest_slot_ge
" item_slot_ge
" player_slot_ge
" team_slot_ge
" scene_prop_slot_ge
" 
" play_sound_at_position
" play_sound
" play_track
" play_cue_track
" music_set_situation
" music_set_culture
" stop_all_sounds
" store_last_sound_channel
" stop_sound_channel
" 
" copy_position
" init_position
" get_trigger_object_position
" 
" get_angle_between_positions
" position_has_line_of_sight_to_position
" get_distance_between_positions
" get_distance_between_positions_in_meters
" get_sq_distance_between_positions
" get_sq_distance_between_positions_in_meters
" position_is_behind_position
" get_sq_distance_between_position_heights
" 
" position_transform_position_to_parent
" position_transform_position_to_local
" 
" position_copy_rotation
" position_copy_origin
" position_move_x
" position_move_y
" position_move_z
" 
" position_rotate_x
" position_rotate_y
" position_rotate_z
" 
" position_get_x
" position_get_y
" position_get_z
" 
" position_set_x
" position_set_y
" position_set_z
" 
" position_get_scale_x
" position_get_scale_y
" position_get_scale_z
" 
" position_rotate_x_floating
" position_rotate_y_floating
" position_rotate_z_floating
" 
" position_get_rotation_around_z
" position_normalize_origin
" 
" position_get_rotation_around_x
" position_get_rotation_around_y
" 
" position_set_scale_x
" position_set_scale_y
" position_set_scale_z
" 
" position_get_screen_projection
" mouse_get_world_projection
" 
" position_set_z_to_ground_level
" position_get_distance_to_terrain=
" position_get_distance_to_ground_level
" 
" start_presentation
" start_background_presentation
" presentation_set_duration
" is_presentation_active
" create_text_overlay
" create_mesh_overlay
" create_button_overlay
" create_image_button_overlay
" create_slider_overlay
" create_progress_overlay
" create_combo_button_overlay
" create_text_box_overlay
" create_check_box_overlay
" create_simple_text_box_overlay
" overlay_set_text
" overlay_set_color
" overlay_set_alpha
" overlay_set_hilight_color
" overlay_set_hilight_alpha
" overlay_set_size
" overlay_set_position
" overlay_set_val
" overlay_set_boundaries
" overlay_set_area_size
" overlay_set_mesh_rotation
" overlay_add_item
" overlay_animate_to_color
" overlay_animate_to_alpha
" overlay_animate_to_highlight_color
" overlay_animate_to_highlight_alpha
" overlay_animate_to_size
" overlay_animate_to_position
" create_image_button_overlay_with_tableau_material
" create_mesh_overlay_with_tableau_material
" create_game_button_overlay
" create_in_game_button_overlay
" create_number_box_overlay
" create_listbox_overlay
" create_mesh_overlay_with_item_id
" set_container_overlay
" overlay_get_position
" overlay_set_display
" create_combo_label_overlay
" overlay_obtain_focus
" 
" overlay_set_tooltip
" overlay_set_container_overlay
" overlay_set_additional_render_height
" overlay_set_material
" 
" show_object_details_overlay
" 
" show_item_details
" close_item_details
" show_item_details_with_modifier
" 
" context_menu_add_item
" auto_save
" allow_ironman
" get_average_game_difficulty
" get_level_boundary
" 
" 
" #-------------------------
" #
" #-------------------------
" all_enemies_defeated
" race_completed_by_player
" num_active_teams_le
" main_hero_fallen
" 
" 
" #----------------------------
" #
" #----------------------------
" 
" #-------------------------------------------------------------------------------------------
" #
" #-------------------------------------------------------------------------------------------
" finish_party_battle_mode
" set_party_battle_mode
" 
" set_camera_follow_party
" start_map_conversation
" rest_for_hours
" rest_for_hours_interactive
" 
" add_xp_to_troop
" add_gold_as_xp
" add_xp_as_reward
" 
" add_gold_to_party
" 
" set_party_creation_random_limits=
" 
" troop_set_note_available
" faction_set_note_available
" party_set_note_available
" quest_set_note_available
" 
" 
" 
" #1090-1091-1092
" spawn_around_party
" set_spawn_radius
" 
" display_debug_message
" display_log_message
" display_message
" set_show_messages
" 
" add_troop_note_tableau_mesh
" add_faction_note_tableau_mesh
" add_party_note_tableau_mesh
" add_quest_note_tableau_mesh
" add_info_page_note_tableau_mesh
" add_troop_note_from_dialog
" add_faction_note_from_dialog
" add_party_note_from_dialog
" add_quest_note_from_dialog
" add_info_page_note_from_dialog
" add_troop_note_from_sreg
" add_faction_note_from_sreg
" add_party_note_from_sreg
" add_quest_note_from_sreg
" add_info_page_note_from_sreg
" 
" tutorial_box
" dialog_box
" question_box
" tutorial_message
" tutorial_message_set_position
" tutorial_message_set_size
" tutorial_message_set_center_justify
" tutorial_message_set_background
" 
" set_tooltip_text
" 
" 
" reset_price_rates
" set_price_rate_for_item
" set_price_rate_for_item_type
" 
" party_join
" party_join_as_prisoner
" troop_join
" troop_join_as_prisoner
" 
" remove_member_from_party
" remove_regular_prisoners
" remove_troops_from_companions
" remove_troops_from_prisoners
" 
" heal_party
" 
" disable_party
" enable_party
" remove_party
" add_companion_party
" 
" add_troop_to_site
" remove_troop_from_site
" modify_visitors_at_site
" reset_visitors
" set_visitor
" set_visitors
" add_visitors_to_current_scene
" scene_set_day_time
" 
" set_relation
" faction_set_name
" faction_set_color
" faction_get_color
" 
" #Quest
" start_quest
" complete_quest
" succeed_quest
" fail_quest
" cancel_quest
" 
" set_quest_progression
" 
" conclude_quest
" 
" setup_quest_text
" setup_quest_giver
" 
" 
" #encounter
" start_encounter
" leave_encounter
" encounter_attack
" select_enemy
" set_passage_menu
" auto_set_meta_mission_at_end_commited
" 
" #simulate_battle
" end_current_battle
" 
" 
" 
" set_mercenary_source_party
" 
" 
" set_merchandise_modifier_quality
" set_merchandise_max_value
" reset_item_probabilities
" set_item_probability_in_merchandise
" 
" #active
" #set_active_troop
" troop_set_name
" troop_set_plural_name
" troop_set_face_key_from_current_profile=
" troop_set_type
" troop_get_type
" troop_is_hero
" troop_is_wounded
" troop_set_auto_equip
" troop_ensure_inventory_space
" troop_sort_inventory
" troop_add_merchandise
" troop_add_merchandise_with_faction
" troop_get_xp
" troop_get_class
" troop_set_class
" 
" troop_raise_attribute
" troop_raise_skill
" troop_raise_proficiency
" troop_raise_proficiency_linear
" 
" troop_add_proficiency_points
" troop_add_gold
" troop_remove_gold
" troop_add_item
" troop_remove_item
" troop_clear_inventory
" troop_equip_items
" troop_inventory_slot_set_item_amount
" troop_inventory_slot_get_item_amount
" troop_inventory_slot_get_item_max_amount
" 
" troop_add_items
" troop_remove_items
" troop_loot_troop
" 
" troop_get_inventory_capacity
" troop_get_inventory_slot
" troop_get_inventory_slot_modifier
" troop_set_inventory_slot
" troop_set_inventory_slot_modifier
" troop_set_faction
" troop_set_age
" troop_set_health
" 
" troop_get_upgrade_troop
" 
" #Items...
" item_get_type
" 
" #Parties...
" party_get_num_companions
" party_get_num_prisoners
" party_set_flags
" party_set_marshall
" party_set_extra_text
" party_set_aggressiveness
" party_set_courage
" party_get_current_terrain
" party_get_template_id
" 
" party_add_members
" party_add_prisoners
" party_add_leader
" party_force_add_members
" party_force_add_prisoners
" 
" party_remove_members
" party_remove_prisoners
" party_clear
" party_wound_members
" party_remove_members_wounded_first
" 
" party_set_faction
" party_relocate_near_party
" 
" party_get_position
" party_set_position
" map_get_random_position_around_position=
" map_get_land_position_around_position
" map_get_water_position_around_position
" 
" 
" party_count_members_of_type
" party_count_companions_of_type
" party_count_prisoners_of_type
" 
" party_get_free_companions_capacity
" party_get_free_prisoners_capacity
" 
" party_get_ai_initiative
" party_set_ai_initiative
" party_set_ai_behavior
" party_set_ai_object
" party_set_ai_target_position
" party_set_ai_patrol_radius
" party_ignore_player
" party_set_bandit_attraction
" party_get_helpfulness
" party_set_helpfulness
" party_set_ignore_with_player_party
" party_get_ignore_with_player_party
" 
" party_get_num_companion_stacks
" party_get_num_prisoner_stacks
" party_stack_get_troop_id
" party_stack_get_size
" party_stack_get_num_wounded
" party_stack_get_troop_dna
" party_prisoner_stack_get_troop_id
" party_prisoner_stack_get_size
" party_prisoner_stack_get_troop_dna
" 
" party_attach_to_party
" party_detach
" party_collect_attachments_to_party
" party_quick_attach_to_current_battle
" 
" party_get_cur_town
" 
" party_leave_cur_battle
" party_set_next_battle_simulation_time
" 
" party_set_name
" 
" party_add_xp_to_stack
" 
" party_get_morale
" party_set_morale
" 
" party_upgrade_with_xp
" party_add_xp
" 
" party_add_template
" 
" party_set_icon
" party_set_banner_icon
" party_add_particle_system
" party_clear_particle_systems
" 
" party_get_battle_opponent
" party_get_icon
" party_set_extra_icon
" 
" party_get_skill_level
" agent_get_speed
" get_battle_advantage
" set_battle_advantage
" 
" agent_refill_wielded_shield_hit_points
" agent_is_in_special_mode
" party_get_attached_to
" party_get_num_attached_parties
" party_get_attached_party_with_rank
" inflict_casualties_to_party_group
" distribute_party_among_party_group
" agent_is_routed
" 
" #Agents
" 
" #store_distance_between_positions,
" #position_is_behind_poisiton,
" get_player_agent_no
" get_player_agent_kill_count
" agent_is_alive
" agent_is_wounded
" agent_is_human
" get_player_agent_own_troop_kill_count
" agent_is_ally
" agent_is_non_player
" agent_is_defender
" agent_is_active
" #agent_is_routed
" #agent_is_in_special_mode
" 
" agent_get_look_position
" agent_get_position
" agent_set_position
" #agent_get_speed
" #agent_is_active
" agent_set_look_target_agent
" agent_get_horse
" agent_get_rider
" agent_get_party_id
" agent_get_entry_no
" agent_get_troop_id
" agent_get_item_id
" 
" store_agent_hit_points
" agent_set_hit_points
" agent_deliver_damage_to_agent
" agent_get_kill_count
" agent_get_player_id
" agent_set_invulnerable_shield
" agent_get_wielded_item
" agent_get_ammo
" #agent_get_ammo_for_slot
" agent_refill_ammo
" #agent_refill_wielded_shield_hit_points
" agent_has_item_equipped
" 
" agent_set_scripted_destination
" agent_get_scripted_destination
" agent_force_rethink
" agent_set_no_death_knock_down_only
" agent_set_horse_speed_factor
" agent_clear_scripted_mode
" agent_set_speed_limit
" agent_ai_set_always_attack_in_melee
" agent_get_simple_behavior
" agent_get_combat_state
" 
" agent_set_animation
" agent_set_stand_animation
" agent_set_walk_forward_animation
" agent_set_animation_progress
" agent_set_look_target_position
" agent_set_attack_action
" agent_set_defend_action
" agent_set_wielded_item
" agent_set_scripted_destination_no_attack
" agent_fade_out
" agent_play_sound
" agent_start_running_away
" agent_stop_running_away
" agent_ai_set_aggressiveness
" agent_set_kick_allowed
" 
" remove_agent
" 
" agent_get_attached_scene_prop
" agent_set_attached_scene_prop
" agent_set_attached_scene_prop_x
" #agent_set_attached_scene_prop_y
" agent_set_attached_scene_prop_z
" 
" agent_get_time_elapsed_since_removed
" agent_get_number_of_enemies_following
" 
" agent_set_no_dynamics
" 
" agent_get_attack_action
" agent_get_defend_action
" 
" agent_get_group
" agent_set_group
" 
" agent_get_action_dir
" agent_get_animation
" agent_is_in_parried_animation
" 
" agent_get_team
" agent_set_team
" 
" agent_get_class
" agent_get_division
" agent_unequip_item
" 
" class_is_listening_order
" agent_set_ammo
" 
" agent_add_offer_with_timeout
" agent_check_offer_from_agent
" 
" agent_equip_item
" 
" entry_point_get_position
" entry_point_set_position
" entry_point_is_auto_generated
" 
" agent_set_division
" 
" team_get_hold_fire_order
" team_get_movement_order
" team_get_riding_order
" team_get_weapon_usage_order
" teams_are_enemies
" team_give_order
" team_set_order_position
" team_get_leader
" team_set_leader
" team_get_order_position
" team_set_order_listener
" team_set_relation
" 
" close_order_menu
" set_rain
" set_fog_distance
" get_scene_boundaries
" 
" scene_prop_enable_after_time
" scene_prop_has_agent_on_it
" 
" agent_clear_relations_with_agents
" agent_add_relation_with_agent
" 
" agent_get_item_slot
" ai_mesh_face_group_show_hide
" 
" agent_is_alarmed
" agent_set_is_alarmed
" agent_stop_sound
" agent_set_attached_scene_prop_y
" 
" scene_prop_get_num_instances
" scene_prop_get_instance
" scene_prop_get_visibility
" scene_prop_set_visibility
" scene_prop_set_hit_points
" scene_prop_get_hit_points
" scene_prop_get_max_hit_points
" scene_prop_get_team
" scene_prop_set_team
" scene_prop_set_prune_time
" scene_prop_set_cur_hit_points
" 
" scene_prop_fade_out
" scene_prop_fade_in
" 
" agent_get_ammo_for_slot
" agent_is_in_line_of_sight
" agent_deliver_damage_to_agent_advanced
" #this
" team_get_gap_distance
" 
" add_missile
" 
" scene_item_get_num_instances
" scene_item_get_instance
" scene_spawned_item_get_num_instances
" scene_spawned_item_get_instance
" scene_allows_mounted_units
" 
" class_set_name
" 
" prop_instance_is_valid
" prop_instance_get_variation_id
" prop_instance_get_variation_id_2
" 
" 
" prop_instance_get_position
" prop_instance_get_starting_position
" prop_instance_get_scale
" prop_instance_get_scene_prop_kind
" prop_instance_set_scale
" prop_instance_set_position
" #dont_send_to_clients
" prop_instance_animate_to_position
" prop_instance_stop_animating
" prop_instance_is_animating
" prop_instance_get_animation_target_position
" prop_instance_enable_physics
" prop_instance_rotate_to_position
" prop_instance_initialize_rotation_angles
" prop_instance_refill_hit_points
" 
" prop_instance_dynamics_set_properties
" prop_instance_dynamics_set_velocity
" prop_instance_dynamics_set_omega
" prop_instance_dynamics_apply_impulse
" 
" prop_instance_receive_damage
" 
" prop_instance_intersects_with_prop_instance
" #cannot
" 
" prop_instance_play_sound
" prop_instance_stop_sound
" 
" prop_instance_clear_attached_missiles
" 
" prop_instance_add_particle_system
" prop_instance_stop_all_particle_systems=
" 
" 
" replace_prop_instance
" replace_scene_props
" replace_scene_items_with_scene_props
" 
" cast_ray
" 
" #---------------------------
" #
" #---------------------------
" 
" set_mission_result
" finish_mission
" jump_to_scene
" set_jump_mission
" set_jump_entry
" start_mission_conversation
" add_reinforcements_to_entry
" 
" mission_enable_talk
" mission_disable_talk
" 
" mission_tpl_entry_set_override_flags
" mission_tpl_entry_clear_override_items
" mission_tpl_entry_add_override_item
" mission_tpl_are_all_agents_spawned
" 
" set_current_color
" set_position_delta
" add_point_light
" add_point_light_to_entity
" particle_system_add_new
" particle_system_emit
" particle_system_burst
" 
" set_spawn_position
" spawn_item
" spawn_agent
" spawn_horse
" spawn_scene_prop
" 
" particle_system_burst_no_sync
" 
" spawn_item_without_refill
" agent_get_item_cur_ammo
" 
" cur_item_add_mesh
" cur_item_set_material
" 
" cur_tableau_add_tableau_mesh
" cur_item_set_tableau_material
" cur_scene_prop_set_tableau_material
" cur_map_icon_set_tableau_material
" cur_tableau_render_as_alpha_mask
" cur_tableau_set_background_color
" cur_agent_set_banner_tableau_material
" cur_tableau_set_ambient_light
" cur_tableau_set_camera_position
" cur_tableau_set_camera_parameters
" cur_tableau_add_point_light
" cur_tableau_add_sun_light
" cur_tableau_add_mesh
" cur_tableau_add_mesh_with_vertex_color
" 
" cur_tableau_add_map_icon
" cur_tableau_add_troop
" cur_tableau_add_horse
" cur_tableau_set_override_flags
" cur_tableau_clear_override_items
" cur_tableau_add_override_item
" cur_tableau_add_mesh_with_scale_and_vertex_color
" mission_cam_set_mode
" mission_get_time_speed
" mission_set_time_speed
" mission_time_speed_move_to_value
" mission_set_duel_mode
" 
" mission_cam_set_screen_color
" mission_cam_animate_to_screen_color
" 
" mission_cam_get_position
" mission_cam_set_position
" mission_cam_animate_to_position
" mission_cam_get_aperture
" mission_cam_set_aperture
" mission_cam_animate_to_aperture
" mission_cam_animate_to_position_and_aperture
" mission_cam_set_target_agent
" mission_cam_clear_target_agent
" mission_cam_set_animation
" 
" talk_info_show
" talk_info_set_relation_bar
" talk_info_set_line
" 
" #mesh
" set_background_mesh
" set_game_menu_tableau_mesh
" 
" #change_window
" change_screen_return
" change_screen_loot
" change_screen_trade
" change_screen_exchange_members
" change_screen_trade_prisoners
" change_screen_buy_mercenaries
" change_screen_view_character
" change_screen_training
" change_screen_mission
" change_screen_map_conversation
" change_screen_exchange_with_party
" change_screen_equip_other
" change_screen_map
" change_screen_notes
" change_screen_quit
" change_screen_give_members
" change_screen_controls
" change_screen_options
" 
" jump_to_menu
" disable_menu_option
" 
" agent_get_damage_modifier
" agent_get_accuracy_modifier
" agent_get_speed_modifier
" agent_get_reload_speed_modifier
" agent_get_use_speed_modifier
" 
" store_trigger_param
" store_trigger_param_1
" store_trigger_param_2
" store_trigger_param_3
" set_trigger_result
" 
" agent_get_bone_position
" 
" agent_ai_set_interact_with_player
" 
" agent_ai_get_look_target
" agent_ai_get_move_target
" agent_ai_get_behavior_target
" agent_ai_set_can_crouch
" 
" agent_set_max_hit_points
" agent_set_damage_modifier
" agent_set_accuracy_modifier
" agent_set_speed_modifier
" agent_set_reload_speed_modifier
" agent_set_use_speed_modifier
" agent_set_visibility
" agent_get_crouch_mode
" agent_set_crouch_mode
" agent_set_ranged_damage_modifier
" 
" store_or
" store_and
" 
" store_mod
" store_add
" store_sub
" store_mul
" store_div
" 
" set_fixed_point_multiplier
" 
" store_sqrt
" store_pow
" store_sin
" store_cos
" store_tan
" 
" convert_to_fixed_point
" convert_from_fixed_point=
" 
" assign
" shuffle_range
" 
" store_random
" store_random_in_range
" 
" store_asin
" store_acos
" store_atan
" store_atan2
" 
" store_troop_gold
" 
" store_num_free_stacks
" store_num_free_prisoner_stacks
" 
" store_party_size
" store_party_size_wo_prisoners
" store_troop_kind_count
" store_num_regular_prisoners
" 
" store_troop_count_companions
" store_troop_count_prisoners
" store_item_kind_count
" 
" store_free_inventory_capacity
" 
" store_skill_level
" store_character_level
" store_attribute_level
" 
" store_troop_faction
" store_faction_of_troop
" store_troop_health
" 
" store_proficiency_level
" 
" store_relation
" set_conversation_speaker_troop
" set_conversation_speaker_agent
" store_conversation_agent
" store_conversation_troop
" store_partner_faction
" store_encountered_party
" store_encountered_party2
" store_faction_of_party
" set_encountered_party
" 
" 
" #store_current_town
" #store_current_site
" store_current_scene
" 
" store_zoom_amount
" set_zoom_amount
" is_zoom_disabled
" 
" store_item_value
" store_troop_value
" 
" store_partner_quest
" store_random_quest_in_range
" store_random_troop_to_raise
" store_random_troop_to_capture
" store_random_party_in_range
" store01_random_parties_in_range
" store_random_horse
" store_random_equipment
" store_random_armor
" store_quest_number
" store_quest_item
" store_quest_troop
" 
" store_current_hours
" store_time_of_day
" store_current_day
" is_currently_night
" 
" store_distance_to_party_from_party
" 
" get_party_ai_behavior
" get_party_ai_object
" party_get_ai_target_position
" get_party_ai_current_behavior
" get_party_ai_current_object
" 
" 
" store_num_parties_created
" store_num_parties_destroyed
" store_num_parties_destroyed_by_player
" 
" 
" #
" store_num_parties_of_template
" store_random_party_of_template
" 
" str_is_empty
" str_clear
" str_store_string
" str_store_string_reg
" str_store_troop_name
" str_store_troop_name_plural
" str_store_troop_name_by_count
" str_store_item_name
" str_store_item_name_plural
" str_store_item_name_by_count
" str_store_party_name
" str_store_agent_name
" str_store_faction_name
" str_store_quest_name
" str_store_info_page_name
" str_store_date
" str_store_troop_name_link
" str_store_party_name_link
" str_store_faction_name_link
" str_store_quest_name_link
" str_store_info_page_name_link
" str_store_class_name
" str_store_player_username
" str_store_server_password
" str_store_server_name
" str_store_welcome_message
" 
" str_encode_url
" 
" #mission
" store_remaining_team_no
" 
" store_mission_timer_a_msec
" store_mission_timer_b_msec
" store_mission_timer_c_msec
" 
" store_mission_timer_a
" store_mission_timer_b
" store_mission_timer_c
" 
" reset_mission_timer_a
" reset_mission_timer_b
" reset_mission_timer_c
" 
" set_cheer_at_no_enemy
" 
" store_enemy_count
" store_friend_count
" store_ally_count
" store_defender_count
" store_attacker_count
" store_normalized_team_count
" set_postfx
" set_river_shader_to_mud
" show_troop_details
" set_skybox
" set_startup_sun_light
" set_startup_ambient_light
" set_startup_ground_ambient_light
" rebuild_shadow_map
" 
" get_startup_sun_light
" get_startup_ambient_light
" get_startup_ground_ambient_light
" 
" set_shader_param_int
" set_shader_param_float
" set_shader_param_float4
" set_shader_param_float4x4
" 
" prop_instance_deform_to_time
" prop_instance_deform_in_range
" prop_instance_deform_in_cycle_loop
" prop_instance_get_current_deform_progress
" prop_instance_get_current_deform_frame
" prop_instance_set_material
" 
" agent_ai_get_num_cached_enemies
" agent_ai_get_cached_enemy
" 
" item_get_weight
" item_get_value
" item_get_difficulty
" item_get_head_armor
" item_get_body_armor
" item_get_leg_armor
" item_get_hit_points
" item_get_weapon_length
" item_get_speed_rating
" item_get_missile_speed
" item_get_max_ammo
" item_get_accuracy
" item_get_shield_height
" item_get_horse_scale
" item_get_horse_speed
" item_get_horse_maneuver
" item_get_food_quality
" item_get_abundance
" item_get_thrust_damage
" item_get_thrust_damage_type
" item_get_swing_damage
" item_get_swing_damage_type
" item_get_horse_charge_damage
" item_has_property
" item_has_capability
" item_has_modifier
" item_has_faction
" 
" str_store_player_face_keys
" player_set_face_keys
" str_store_troop_face_keys
" troop_set_face_keys
" face_keys_get_hair
" face_keys_set_hair
" face_keys_get_beard
" face_keys_set_beard
" face_keys_get_face_texture
" face_keys_set_face_texture
" face_keys_get_hair_texture
" face_keys_set_hair_texture
" face_keys_get_hair_color
" face_keys_set_hair_color
" face_keys_get_age
" face_keys_set_age
" face_keys_get_skin_color
" face_keys_set_skin_color
" face_keys_get_morph_key
" face_keys_set_morph_key
