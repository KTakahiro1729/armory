package armory.logicnode;

import iron.object.Object;
import armory.system.Event;

class SendGlobalEventNode extends LogicNode {

	var entries:Array<TEvent> = null;

	public function new(tree:LogicTree) {
		super(tree);
	}

	override function run(node:LogicNode) {
		var name:String = inputs[1].get();
		
		// if (entries == null) {
			entries = Event.get(name);
		// }
		if (entries == null) return; // Event does not exist
		for (e in entries) e.onEvent();

		super.run(this);
	}
}
