<?php
class PluginNews_HookNews extends Hook {
    public function RegisterHook() {
        if ((Router::GetAction() == "index") || (Router::GetAction() == "topic") || (Router::GetAction() == "blogs")) {
            $this->Viewer_AddBlocks('right', array(
                array(
                    'block'    => 'News',
                    'params'   => array('plugin' => 'news'),
                    'priority' => 100,
                )
            ));
        }
    }
}