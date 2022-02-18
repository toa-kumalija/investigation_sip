/*
 * Copyright (c) 2010-2019 Belledonne Communications SARL.
 *
 * This file is part of Liblinphone.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package org.linphone.core;
/**
 * Call data records object
 *
 */
import java.util.Vector;


/**
 * Object representing a call log.
 *
 *
**/
public interface LinphoneCallLog {
	/**
	 * Represents call status
	 *
	 */
	static class CallStatus {

		static private Vector<CallStatus> values = new Vector<CallStatus>();
		private final int mValue;
		private final String mStringValue;
		/**
		 * Call success.
		 */
		public final static CallStatus Success = new CallStatus(0,"Success");
		/**
		 * Call aborted.
		 */
		public final static CallStatus Aborted = new CallStatus(1,"Aborted");
		/**
		 * missed incoming call.
		 */
		public final static CallStatus Missed = new CallStatus(2,"Missed");
		/**
		 * remote call declined.
		 */
		public final static CallStatus Declined = new CallStatus(3,"Declined");

		/**
		 * The call was aborted before being advertised to the application - for protocol reasons
		 */
		public final static CallStatus EarlyAborted = new CallStatus(4,"Early Aborted");

		/**
		 * The call was answered on another device
		 */
		public final static CallStatus AcceptedElsewhere = new CallStatus(5,"Accepted Elsewhere");

		/**
		 * The call was declined on another device
		 */
		public final static CallStatus DeclinedElsewhere = new CallStatus(6,"Declined Elsewhere");


		private CallStatus(int value,String stringValue) {
			mValue = value;
			values.addElement(this);
			mStringValue=stringValue;
		}
		public static CallStatus fromInt(int value) {

			for (int i=0; i<values.size();i++) {
				CallStatus state = (CallStatus) values.elementAt(i);
				if (state.mValue == value) return state;
			}
			throw new RuntimeException("CallStatus not found ["+value+"]");
		}
		public String toString() {
			return mStringValue;
		}
		public int toInt() {
			return mValue;
		}
	}

	/**
	 * Originator of the call as a LinphoneAddress object.
	 * @return LinphoneAddress
	 */
	public LinphoneAddress getFrom();
	/**
	 * Destination of the call as a LinphoneAddress object.
	 * @return
	 */
	public LinphoneAddress getTo ();
	/**
	 * The direction of the call
	 * @return CallDirection
	 */
	public CallDirection getDirection();
	/**
	 * get status of this call
	 * @return CallStatus
	 */
	public CallStatus getStatus();

	/**
	 * A human readable String with the start date/time of the call
	 * @return String
	 */
	public String getStartDate();

	/**
	 * A  timestamp of the start date/time of the call in milliseconds since January 1st 1970
	 * @return  long
	 */
	public long getTimestamp();

	/**
	 * The call duration, in seconds
	 * @return int
	 */
	public int getCallDuration();
	/**
	 *  Call id from signaling
	 * @return the SIP call-id.
	 */
	public String getCallId();
	/**
	 * Tells whether the call was a call to a conference server
	 * @return true if the call was a call to a conference server
	 */
	public boolean wasConference();
}
