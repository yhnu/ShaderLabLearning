// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/Shader01"
{    
    SubShader
    {
        Pass
        {
            CGPROGRAM            
            #pragma vertex vert
            #pragma fragment frag
            /*struct a2v {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 texcoord : TEXCOORD0;
            };
            float4 vert(a2v v) : SV_POSITION {
                return UnityObjectToClipPos(v.vertex);
            }*/
            float4 vert(float4 v: POSITION) : SV_POSITION{
            return UnityObjectToClipPos(v);
    }

            fixed4 frag() : SV_Target {
                return fixed4(0.0, 1.0, 1.0, 1.0);
            }

            ENDCG
        }
    }
    FallBack "Diffuse"
}
