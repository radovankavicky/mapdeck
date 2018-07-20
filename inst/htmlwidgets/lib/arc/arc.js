
function add_arc( map_id, arc_data, layer_id ) {
  // reference: http://deck.gl/#/documentation/deckgl-api-reference/layers/arc-layer

  const arcLayer = new ArcLayer({
    id: 'arc-'+layer_id,  // TODO
    data: arc_data,
    pickable: true,
    getStrokeWidth: d => d.stroke_width,
    getSourcePosition: d => [d.lon_from, d.lat_from],
    getTargetPosition: d => [d.lon_to, d.lat_to],
    getSourceColor: d => hexToRgb( d.stroke_from ),
    getTargetColor: d => hexToRgb( d.stroke_to ),
    //onHover: ({object}) => setTooltip(`${object.from.name} to ${object.to.name}`)
    //onHover: info => console.log('Hovered:', info),
    //onClick: info => console.log('Clicked:', info)
    onClick: info => layer_click( map_id, "arc", info )
  });

  window[map_id + 'layers'].push( arcLayer );
  window[map_id + 'map'].setProps({ layers: window[map_id + 'layers'] } );

}


