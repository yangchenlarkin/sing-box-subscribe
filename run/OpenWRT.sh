sing-box rule-set compile --output json_files/custom_rule_set/geoip/github.srs      json_files/custom_rule_set/geoip/github.json
sing-box rule-set compile --output json_files/custom_rule_set/geoip/direct.srs      json_files/custom_rule_set/geoip/direct.json
sing-box rule-set compile --output json_files/custom_rule_set/geosite/direct.srs    json_files/custom_rule_set/geosite/direct.json

python3 -m virtualenv venv
source venv/bin/activate
pip3 install -r src/requirements.txt
python3 src/main.py
cd sing-box-runtime
sing-box run -c ../json_files/config.json
