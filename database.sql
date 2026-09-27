CREATE TABLE IF NOT EXISTS player_settings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    player_id VARCHAR(255) NOT NULL,
    shader_intensity FLOAT NOT NULL DEFAULT 1.0,
    shader_quality VARCHAR(255) NOT NULL DEFAULT 'high',
    anti_lag_enabled BOOLEAN NOT NULL DEFAULT true,
    max_entities INT NOT NULL DEFAULT 1000,
    UNIQUE KEY unique_player_id (player_id)
);

INSERT INTO player_settings (player_id, shader_intensity, shader_quality, anti_lag_enabled, max_entities) VALUES
('default', 1.0, 'high', true, 1000);