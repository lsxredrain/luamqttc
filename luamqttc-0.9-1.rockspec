package = "luamqttc"
version = "0.9-1"

source = {
    url = "..." -- We don't have one yet
}

description = {
    summary = "A lua mqtt client",
    detailed = [[
        A lua mqtt client which is based on the paho Embedded MQTT C Client Libraries.
    ]],
    homepage = "http://...",
    license = "EPL"
}
dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        mqttpacket = {
            sources = {
                "deps/org.eclipse.paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectClient.c",
                "deps/org.eclipse.paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectServer.c",
                "deps/org.eclipse.paho.mqtt.embedded-c/MQTTPacket/src/MQTTDeserializePublish.c",
                "deps/org.eclipse.paho.mqtt.embedded-c/MQTTPacket/src/MQTTFormat.c",
                "deps/org.eclipse.paho.mqtt.embedded-c/MQTTPacket/src/MQTTPacket.c",
                "deps/org.eclipse.paho.mqtt.embedded-c/MQTTPacket/src/MQTTSerializePublish.c",
                "deps/org.eclipse.paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeClient.c",
                "deps/org.eclipse.paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeServer.c",
                "deps/org.eclipse.paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeClient.c",
                "deps/org.eclipse.paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeServer.c",
                "src/luamqttpacket.c"
            },
            incdirs = { "deps/org.eclipse.paho.mqtt.embedded-c/MQTTPacket/src" }
        }
    },
    install = {
        lua = {
            ["luamqttc.client"] = "src/client.lua",
            ["luamqttc.timer"] = "src/timer.lua",
            ["luamqttc.publish"] = "src/publish.lua",
            ["luamqttc.subscribe"] = "src/subscribe.lua"
        }
    }
}