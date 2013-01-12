<?php

class PluginNews_BlockNews extends Block {

    public function Exec() {
        /** Получаем записи стены */
        $aWall = $this->Wall_GetWall(
            array('wall_user_id' => 1, 'pid' => null),
            array('id' => 'desc'),
            1,
            5);  // 5-количество новостей

        $this->Viewer_Assign('aWall', $aWall['collection']);
    }

}